resource "aws_iam_group" "house" {
    name = "house"
    path = "/users/"
}

resource "aws_iam_group_membership" "house_membership" {
  name = aws_iam_group.house.name
  users = [aws_iam_user.couch.name]
  group = aws_iam_group.house.name
}

resource "aws_iam_group_policy" "house_policy" {
  name  = "AmazonEC2ReadOnlyAccess"
  group = aws_iam_group.house.name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_user" "couch" {
    name = "couch"
}

resource "aws_iam_group" "house2" {
    name = "house2"
    path = "/users/"
}

resource "aws_iam_group_membership" "house2_membership" {
  name = aws_iam_group.house2.name
  users = [aws_iam_user.oven.name]
  group = aws_iam_group.house2.name
}

resource "aws_iam_group_policy" "house2_policy" {
  name  = "AmazonEC2ReadOnlyAccess"
  group = aws_iam_group.house2.name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_user" "oven" {
    name = "oven"
}

resource "aws_iam_group" "house3" {
    name = "house3"
    path = "/users/"
  }

resource "aws_iam_group_membership" "house3_membership" {
  name = aws_iam_group.house3.name
  users = [aws_iam_user.bedroom.name]
  group = aws_iam_group.house3.name
}

resource "aws_iam_group_policy" "house3_policy" {
  name  = "AmazonEC2ReadOnlyAccess"
  group = aws_iam_group.house3.name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_user" "bedroom" {
    name = "bedroom"
}

resource "aws_iam_group" "house4" {
    name = "house4"
    path = "/users/"
}

resource "aws_iam_group_membership" "house4_membership" {
  name = aws_iam_group.house4.name
  users = [aws_iam_user.table.name]
  group = aws_iam_group.house4.name
}

resource "aws_iam_group_policy" "house4_policy" {
  name  = "AmazonEC2ReadOnlyAccess"
  group = aws_iam_group.house4.name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_user" "table" {
    name = "table"
}