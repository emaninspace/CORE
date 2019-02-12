find_course <- function(df, course) {
  df %>%
    filter(course_name %in% course,
           stc_verified_grade %in% c("A", "B", "C", "D", "F",
                                     "W",
                                     "P", "NP")) %>%
    select(students_id, stc_term, course_name,
           stc_verified_grade) %>%
    unique() %>%
    group_by(students_id) %>%
    slice(n()) %>%
    ungroup()
}
