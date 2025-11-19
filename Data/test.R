anim <- ggplot(mtcars, aes(mpg, disp)) +
  transition_states(gear, transition_length = 2, state_length = 1) +
  enter_fade() +
  exit_fade()

if (FALSE) { # \dontrun{
  # Default uses linear easing
  animate(anim)
} # }

# Change all to 'cubic-in-out' for a smoother appearance
anim1 <- anim +
  ease_aes('cubic-in-out')
if (FALSE) { # \dontrun{
  animate(anim1)
} # }

# Only change easing of y variables
anim2 <- anim +
  ease_aes(y = 'bounce-in')
if (FALSE) { # \dontrun{
  animate(anim2)
} # }

