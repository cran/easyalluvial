% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alluvial_model_response.R
\name{pdp_predictions}
\alias{pdp_predictions}
\title{get predictions compatible with the partial dependence plotting method,
parallel variant is called by get_pdp_predictions()}
\usage{
pdp_predictions(
  df,
  imp,
  m,
  degree = 4,
  bins = 5,
  .f_predict = predict,
  parallel = FALSE
)
}
\arguments{
\item{df}{dataframe, training data}

\item{imp}{dataframe, with not more then two columns one of them numeric
containing importance measures and one character or factor column containing
corresponding variable names as found in training data.}

\item{m}{model object}

\item{degree}{integer,  number of top important variables to select. For
plotting more than 4 will result in two many flows and the alluvial plot
will not be very readable, Default: 4}

\item{bins}{integer, number of bins for numeric variables, increasing this
number might result in too many flows, Default: 5}

\item{.f_predict}{corresponding model predict() function. Needs to accept `m`
as the first parameter and use the `newdata` parameter. Supply a wrapper for
predict functions with x-y syntax. For parallel processing the predict
method of object classes will not always get imported correctly to the worker
environment. We can pass the correct predict method via this parameter for 
example randomForest:::predict.randomForest. Note that a lot of modeling
packages do not export the predict method explicitly and it can only be found
using :::.}

\item{parallel}{logical, Default: TRUE}
}
\description{
get predictions compatible with the partial dependence plotting method,
parallel variant is called by get_pdp_predictions()
}
\seealso{
\code{\link[easyalluvial]{get_pdp_predictions}}
}
