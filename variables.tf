variable "do_token" {
  type = string
}

variable "region" {
  type    = string
  default = "nyc1"
}

variable "wp_vm_count" {
  type        = number
  default     = 2
  description = "Número de máquinas para o wordpress"

  validation {
    condition     = var.wp_vm_count > 1
    error_message = "O número de máquinas precisa ser maior que 1 para melhor disponibilidade"
  }
}

variable "vms_ssh" {
  type = string
  description = "Chave ssh para as vms"
}
