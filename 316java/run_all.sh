#!/bin/bash

# Compile the VM
javac TJasn/virtualMachine/*.java

for i in {0..15}
do
   echo "---------------------------------------"
   echo "Running CS316ex$i.java"
   
   # Provide 'n' for the debug prompt, followed by program-specific inputs
   # Example for ex5: 'n' for debug, then '2' for amtOfInput, then '5' for num...
   case $i in
      5)  inputs=$'n\n2\n5\n3' ;;
      7)  inputs=$'n\n10\n-1' ;;
      8)  inputs=$'n\n50\n9999' ;;
      12) inputs=$'n\n5\n4\n3\n2\n1\n0\n0' ;;
      13) inputs=$'n\n12345\n5' ;;
      14) inputs=$'n\n2\n2\n1\n2\n3\n4\n0' ;;
      *)  inputs=$'n' ;; # Default for others
   esac

   echo "$inputs" | java -cp . TJasn.TJ "CS316ex$i.java" "$i.out"
   
   echo "Execution of CS316ex$i complete."
done
