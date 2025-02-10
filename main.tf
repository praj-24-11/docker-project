resource "aws_ecs_cluster" "my_cluster" {
  name = "my-cluster"
}

resource "aws_ecr_repository" "my_repository" {
  name = "my-docker-repo"
}
