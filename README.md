# phpunit-runner

This is a PHPUnit runner that executes tests based on the `PHPUnit` framework.

## How to Use it

In order to use this runner for your project, edit the `codingame.yml` file and add the following lines to your project:

    runner:
      name: codingame/phpunit-runner
      version: 1.0

## Example

In this example, the user is asked to write a method `toUpper` (file `uppercase.php`):

```php
<?php
declare(strict_types=1);

final class StringUtils
{
    public static function toUpper(string $str): string
    {
        return strtoupper($str);
    }
}
```

In order to test the answer, the following unit test is created (file `uppercaseTest.php`):

```php
<?php
declare(strict_types=1);

use PHPUnit\Framework\TestCase;

final class StringUtilsTest extends TestCase
{
    public function testToUpper()
    {
        $this->assertEquals('TEST', StringUtils::toUpper('Test'));
    }
}

```

In the markdown file, the unit test can be called using:

`@[Test StringUtils.toUpper]({"stubs":["uppercase.php"], "command":" --bootstrap uppercase.php uppercaseTest.php"})`

