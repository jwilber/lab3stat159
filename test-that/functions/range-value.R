range_value <- function(x, na.rm=T) {
  if (na.rm == TRUE) {
    return( max(x, na.rm=T) - min(x,na.rm=T))
  } else {
    return (max(x) - min(x))
  }
}