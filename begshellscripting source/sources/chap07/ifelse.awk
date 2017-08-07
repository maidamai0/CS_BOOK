{ if ($3 < 1000) 
        printf "%s has only %d people!\n", $1, $3 
  else 
        printf "%s has a population larger than 1000\n", $1 }
