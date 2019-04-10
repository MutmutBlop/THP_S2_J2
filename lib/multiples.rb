def is_multiple_of_3_or_5?(current_number)

    if current_number % 3 == 0 || current_number % 5 == 0
      return true
    else
      return false
    end
end

def sum_of_3_or_5_multiples(current_number)

  final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro
  final_number = 1000

    while current_number < final_number
        if is_multiple_of_3_or_5?(current_number)
        return final_sum += current_number
        current_number +=1
        end
    end
        return final_sum
end
