# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 5/31/2018
 inputs = list(1, 2, 4, -5, 'oops', 0, 10)

# for(input in inputs) {
#  try(print(paste("log of", input, "=", log(input))))
# }

#tryCatch()
for(input in inputs) {
    tryCatch(print(paste("log of", input, "=", log(input))),
            warning = function(w) {print(paste("negative argument", input));
                                      log(-input)},
            error = function(e) {print(paste("non-numeric argument", input));
                                    NaN})
 }

