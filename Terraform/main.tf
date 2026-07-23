resource "aws_ecr_repository" "cart" {
  name                 = "robot_shop_cart"
  image_tag_mutability = "IMMUTABLE"
  force_delete = true
}

resource "aws_ecr_repository" "user" {
  name                 = "robot_shop_user"
  image_tag_mutability = "IMMUTABLE"
  force_delete = true

}

resource "aws_ecr_repository" "catalogue" {
  name                 = "robot_shop_catalogue"
  image_tag_mutability = "IMMUTABLE"
  force_delete = true
}

resource "aws_ecr_repository" "dispatch" {
  name                 = "robot_shop_dispatch"
  image_tag_mutability = "IMMUTABLE"
  force_delete = true
}

resource "aws_ecr_repository" "mongo" {
  name                 = "robot_shop_mongo"
  image_tag_mutability = "IMMUTABLE"
  force_delete = true
}

resource "aws_ecr_repository" "mysql" {
  name                 = "robot_shop_mysql"
  image_tag_mutability = "IMMUTABLE"
  force_delete = true
}

resource "aws_ecr_repository" "python" {
  name                 = "robot_shop_python"
  image_tag_mutability = "IMMUTABLE"
  force_delete = true
}

resource "aws_ecr_repository" "rating" {
  name                 = "robot_shop_rating"
  image_tag_mutability = "IMMUTABLE"
  force_delete = true
}

resource "aws_ecr_repository" "shipping" {
  name                 = "robot_shop_shipping"
  image_tag_mutability = "IMMUTABLE"
  force_delete = true
}

resource "aws_ecr_repository" "web" {
  name                 = "robot_shop_web"
  image_tag_mutability = "IMMUTABLE"
  force_delete = true
}

resource "aws_ecr_repository" "payment" {
  name                 = "robot_shop_payment"
  image_tag_mutability = "IMMUTABLE"
  force_delete = true
}