previous_term <- function(term) {
  year <- as.integer(substr(term, 1,4))
  sem <- substr(term, 5,6)

  if (sem == "FA"){
    next_sem = c("SU", "SP")
    next_year <- year
  }

  if (sem == "SP"){
    next_sem = c("FA")
    next_year <- year - 1
  }

  if (sem == "SU"){
    next_sem = "SP"
    next_year <- year
  }

  paste(next_year, next_sem, sep="")
}
