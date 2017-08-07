BEGIN { printf "%-15s %20s\n\n", "Country", "Cell phones” }
      { printf "%-15s %20d\n", $1, $6 }
