#!/usr/bin/env ruby

process_noise_covariance = 1e-2
measurement_error_covariance = 0.1**2   # customisable

# initial guess
a_posteri_estimate = 0.0
a_posteri_error = 1.0

STDIN.each do |observation|
  observation = observation.to_f

  # time update
  a_priori_estimate = a_posteri_estimate
  a_priori_error = a_posteri_error + process_noise_covariance

  # measurement update
  gain = a_priori_error / ( a_priori_error + measurement_error_covariance )
  a_posteri_estimate = a_priori_estimate + gain * ( observation - a_priori_estimate )
  a_posteri_error = ( 1 - gain ) * a_priori_error

  puts a_posteri_estimate

end
