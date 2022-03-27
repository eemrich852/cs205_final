# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Defense: [VALUE]
# ======= END SUMMARY =======

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.




print "======= SUMMARY OF POKEMON.DAT ======"
awk 'BEGIN{c1=0} //{c1++} END{print   "Total Non-Legendary Pokemon:" c1-66}' /Users/ethan/cs205_final/pokemon.dat
awk ' {hp +=$6; count++} END{print "Avg. HP:" hp/count}' /Users/ethan/cs205_final/pokemon.dat
awk ' {df +=$8; count++} END{print "Avg. Defense:" df/count}' /Users/ethan/cs205_final/pokemon.dat
print "======= END SUMMARY ======="
