provider random {

}

resource "random_password" "passwords" {
    length = 8
    special = true
    override_special = "!#$%&*()-_=+[]{}<>:?"
    count = 12
}

resource "local_file" "passwords_file" {
    filename = "passwords_file.txt"
    content = join("\n", random_password.passwords[*].result)    
}