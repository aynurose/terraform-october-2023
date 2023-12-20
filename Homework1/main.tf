resource "aws_iam_user" "one" {
  name = "Aynura"
}

resource "aws_iam_user" "two" {
  name = "Kaizen"
}
resource "aws_iam_user" "three" {
  name = "Hello"
}
resource "aws_iam_user" "four" {
  name = "World"
}
resource "aws_iam_group" "developer" {
  name = "devops"
}
resource "aws_iam_group" "tester" {
  name = "QA"
}
resource "aws_iam_group_membership" "team1" {
  name = "developer-group-membership"

  users = [
    aws_iam_user.one.name,
    aws_iam_user.two.name,
  ]

  group = aws_iam_group.developer.name
}
resource "aws_iam_group_membership" "team2" {
  name = "tester-group-membership"

  users = [
    aws_iam_user.three.name,
    aws_iam_user.four.name,
  ]

  group = aws_iam_group.tester.name
}

resource "aws_iam_user" "five" {
  name = "Admin"
}

output "test" {
  value=aws_iam_user.one
}

output "test2" {
  value=aws_iam_user.two.id
}
