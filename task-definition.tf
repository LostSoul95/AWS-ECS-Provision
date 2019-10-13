data "aws_ecs_task_definition" "Hash_brown" {
  task_definition = "${aws_ecs_task_definition.Hash_brown.family}"
}

resource "aws_ecs_task_definition" "Hash_brown" {
    family                = "Hash_brown"
    container_definitions = <<DEFINITION
[
  {
    "name": "node",
    "links": [
      "mysql"
    ],
    "image": "node",
    "essential": true,
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ],
    "memory": 500,
    "cpu": 10
  },
  {
    "environment": [
      {
        "name": "MONGO_ROOT_PASSWORD",
        "value": "password"
      }
    ],
    "name": "mongo",
    "image": "mongo",
    "cpu": 10,
    "memory": 500,
    "essential": true
  }
]
DEFINITION
}
