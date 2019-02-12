next_term <- function(term) {
  year <- as.integer(substr(term, 1,4))
  sem <- substr(term, 5,6)

  if (sem == "FA"){
    next_sem = "SP"
    next_year <- year + 1
  }

  if (sem == "SP"){
    next_sem = c("SU", "FA")
    next_year <- year
  }

  if (sem == "SU"){
    next_sem = "FA"
    next_year <- year
  }

  paste(next_year, next_sem, sep="")
}
