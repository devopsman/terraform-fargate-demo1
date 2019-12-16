Feature: Test naming convention for all resources

Scenario Outline: Naming Standard on all available resources
    Given I have <resource_name> defined
    When it contains <name_key>
    Then its value must match the "fg*" regex

    Examples:
    | resource_name           | name_key |
    | aws_alb                 | name     |
    | aws_security_group      | name     |
    | aws_ecs_cluster         | name     |
