grades_to_pf <- function(table) {
  table %>%
    mutate(pf = case_when(
      stc_verified_grade %in% c("A", "B", "C") ~ "P",
      stc_verified_grade %in% c("D", "F") ~ "F",
      stc_verified_grade %in% c("W") ~ "W"
    ))
}
