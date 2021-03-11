#' lightening_levels
#'
#' This function reports the numerical lightening level random probabilities and the categorization for each lightening level.
#' @param lightening_sample Number of samples taken of thunder and lightening
#' Lightning Activity Level is rated on a scale of 1 to 6 as described below:
#' LAL 1— No thunderstorm or building cumulus clouds observed.
#' LAL 2— A single or few building cumulus clouds with only an occasional one reaching thunderstorm intensity observed. Thunderstorms or lightning need not be observed for this activity level to be assigned; however at least one large cumulus cloud must be present.
#' LAL 3— Occasional lightning (an average of 1 to 2 cloud -to-ground strikes per minute) is observed. Building cumulus clouds are common; thunderstorms are widely scattered.
#' LAL 4— Frequent lighting (an average of 2 to 3 cloud-to-ground strikes per minute) is observed. Thunderstorms are common and cover 10 to 30 percent of the sky. Lightning is primarily of the cloud-to-cloud type but cloud-to-ground lightning may be observed.
#' LAL 5— Frequent and intense lightning (cloud-to-ground strikes greater than 3 per minute) is observed. Thunderstorms are common, occasionally obscuring the sky. Moderate to heavy rain usually precede and follow the lightning activity. Lightning of all kinds (cloud-to-cloud, in-cloud and cloud-to-ground) is characteristically persistent during the storm period.
#' LAL 6— A dry lightning situation. Low lightning flash rate observed (less than one to three cloud-to-ground strikes per 5-minute period per storm cell passage). Scattered towering clouds with a few thunderstorms; bases of the clouds are high. Virga is the predominate form of precipitation.
#' @return Frequency of each lightening level occurrence.
#' @author Allison Bailey
#' @example lightening_levels(200)
#' @source National Park Service - https://www.nps.gov/articles/understanding-fire-danger.htm

# library(tidyverse)

  lightening_probability = function(lightening_sample = 100){
    throws <- sample(1:6, lightening_sample, rep = T)
    frequency <- table(throws)/lightening_sample
    barplot(frequency, main = "Lightening Level Probability")

    abline(h = 1/6, col = 'red', lwd = 2)
    return(frequency)


    lightening_sample=ifelse((lightening_sample <0), return("Lightening Sample must be greater than zero"),
                       lightening_sample)

  }


#rm(list = c("lightening_levels"))

#lightening_levels()

