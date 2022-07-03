emp_data <- data.frame(emp_id = c(1:5),emp_name = c("Esub","sattar","vishnu","Deepak","Joseph"),salary = c(5,7,10,11,12))
result<- data.frame(emp_data $emp_id,emp_data$emp_name,emp_data$salary);
print(result)
ftr  <- result[c(3,5),c(1,2)]
print(ftr)

