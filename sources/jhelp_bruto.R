jhelp_bruto <- function(ObjName) {
  Dir <- "C:/Users/hoge/Desktop/src/"
  List <- paste0(Dir, list.files(Dir, recursive = TRUE))

  Symbol <- c("\\+", "\\-", "\\*", "\\*\\*", "\\/", "\\^", "\\\\%\\\\%",
     "\\\\%\\/\\\\%", "\\\\%\\*\\\\%", "\\!", "\\&", "\\&\\&", "\\|", "\\|\\|",
     "\\\\%in\\\\%", "\\\\%o\\\\%", "\\\\%x\\\\%", "\\[", "\\[.listof", "\\?",
     "\\[.simple.list", "\\[.Dlist", "\\[\\[", "\\$", "\\[<-", "\\[\\[<-", "\\$<-")
  names(Symbol) <- c("+", "-", "*", "**", "/", "^", "%%", "%/%", "%*%",
     "!", "&", "&&", "|", "||", "%in%", "%o%", "%x%", "[", "[.listof", "?",
     "[.simple.list", "[.Dlist", "[[", "$", "[<-", "[[<-", "$<-")

  if(!is.character(ObjName)) ObjName <- deparse(substitute(ObjName))
  if (ObjName %in% names(Symbol)) ObjName <- Symbol[ObjName]
  StrObjName <- paste0("^\\\\alias\\{", ObjName, "\\}")
  
  options(warn = -1)
  checkStr <- sapply(List, function(x) length(grep(StrObjName, readLines(x))))
  options(warn = 0)
  Target <- names(checkStr[checkStr != 0])
  if(length(Target) > 1) {
     cat("候補が複数あります\n")
     Target <- Target[menu(Target)]
  }
  temp <- tools::Rd2HTML(Target, out = tempfile("Rhtml", fileext = ".html"))
  browseURL(temp)
}
