#' lightening_levels
#'
#' This function reports the numerical lightening levels and the categorization for each lightening level.
#' @param light_level Numerical levels of lightening 1-6
#' @param month_prob A 30 day probability forecast of lightening in city X.
#' @param show_levels
#' Lightning Activity Level is rated on a scale of 1 to 6 as described below:
#' LAL 1— No thunderstorm or building cumulus clouds observed.
#' LAL 2— A single or few building cumulus clouds with only an occasional one reaching thunderstorm intensity observed. Thunderstorms or lightning need not be observed for this activity level to be assigned; however at least one large cumulus cloud must be present.
#' LAL 3— Occasional lightning (an average of 1 to 2 cloud -to-ground strikes per minute) is observed. Building cumulus clouds are common; thunderstorms are widely scattered.
#' LAL 4— Frequent lighting (an average of 2 to 3 cloud-to-ground strikes per minute) is observed. Thunderstorms are common and cover 10 to 30 percent of the sky. Lightning is primarily of the cloud-to-cloud type but cloud-to-ground lightning may be observed.
#' LAL 5— Frequent and intense lightning (cloud-to-ground strikes greater than 3 per minute) is observed. Thunderstorms are common, occasionally obscuring the sky. Moderate to heavy rain usually precede and follow the lightning activity. Lightning of all kinds (cloud-to-cloud, in-cloud and cloud-to-ground) is characteristically persistent during the storm period.
#' LAL 6— A dry lightning situation. Low lightning flash rate observed (less than one to three cloud-to-ground strikes per 5-minute period per storm cell passage). Scattered towering clouds with a few thunderstorms; bases of the clouds are high. Virga is the predominate form of precipitation.
#' @return If show_levels = TRUE, A lightening summary of lightening levels categorized.
#' @return If month_prob = TRUE, a 30 day probability summary of lightening levels each day will be generated.
#' @author Allison Bailey
#' @example lightening_levels(light_level=0, show_levels = FALSE, month_prob = TRUE)
#' @source National Park Service - https://www.nps.gov/articles/understanding-fire-danger.htm

library(tidyverse)

lightening_levels = function(light_level=0, show_levels = FALSE, month_prob = TRUE) while(light_level < 6) {
    if(show_levels == TRUE)
  {
    return(light_level=light_level+1)
    print(case_when(light_level==1~"None",
                    light_level==2~"Occasional Thunderstorms",
                    light_level==3~"Occasional Lightening",
                    light_level==4~"Frequent Lightening",
                    light_level==5~"Frequent & Intense Lightening",
                    light_level==6~"Dry Lightening"))

  }

  # output from function
  if(month_prob == TRUE) {
    results = sample (c('None','Occasional Thunderstorms', 'Occasional Lightening',
                     'Frequent Lightening', 'Frequent & Intense Lightening',
                     'Dry Lightening' ), size=30,
                   replace=T, prob=c(.25,.20, .25, .20, .5, .5))

    return(results)

    # simple random sampling in r

    light_level=ifelse((light_level<0), return("Lightening Levels must be greater than zero"),
                       light_level)

  }

}

#rm(list = c("lightening_levels"))

#lightening_levels()

