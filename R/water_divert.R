#' water_divert
#'
#' This function calculates total water diverted in acre-feet so long as flow is greater than 1000 cfs and water users only divert for at most 200 days per year
#' @param diversion is the amount of water diverted (cubic feet per second)
#' @return Total water diverted in acre-feet
#' @author Alex Milward
#' @example water_diverted(diversion)



water_divert = function(diversion) {
  #add error checking here
  if (diversion < 0)
    return("diversion must be positive value")

  day = 0
  flow_avg = 1500 #minimum flow of 1500 cfs

  while ( (flow_avg >= 1000) && (day < 200)) {
    # water right only allows for less than 200 diversion days/year
    # diverting at certain amount per day (diversion)
    flow_avg = flow_avg - diversion
    day = day + 1
  }

  #
  results = day * diversion * 1.983 #conversion from cfs to acre-feet/day
  return(results)
}
