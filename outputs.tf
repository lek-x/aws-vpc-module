
output "vpc" {
  value = "name: ${aws_vpc.main.tags_all.Name}, id: ${aws_vpc.main.id}"
}

output "public_subnet" {
  value = "name: ${aws_subnet.public.tags_all.Name} , id: ${aws_subnet.public.id}"
}

output "private_subnet" {
  value = "name: ${aws_subnet.private.tags_all.Name} , id: ${aws_subnet.private.id}"
}

output "eip_private_ip" {
  value = aws_eip.eip[0].private_ip
}

output "eip_public_ip" {
  value = aws_eip.eip[0].public_ip
}
