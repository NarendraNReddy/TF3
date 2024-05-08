
output "private_db" {
  
  
  value=aws_instance.expense[0].private_ip
}

output "private_ip_backend"{
  value=aws_instance.expense[1].private_ip
  
}

output "public_ip_frontend"{
  value=aws_instance.expense[2].public_ip
  
}


