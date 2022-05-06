# policy testing

## 1. 示例: 权限

```shell
opa test -v authz.rego authz_test.rego
```

## 2. 示例: 简单示例

```shell
opa test -v example.rego example_test.rego
```

支持选择测试用例执行`-r``
```shell
opa test -v -r test_post_allowed example.rego example_test.rego
```

选择测试用例是执行正则表达式匹配, 你可以测试以`test_get`的相关测试
```shell
opa test -v -r test_get example.rego example_test.rego
```

## 3. 示例: 测试用例的形式与各类测试用例结果

```shell
 opa test -v example.rego pass_fail_error_test.rego
 ```

默认情况下，`OPA`以人类可读格式打印测试结果。如果您需要以编程方式使用测试结果，请使用`JSON`输出格式

```shell
opa test --format=json example.rego pass_fail_error_test.rego 
```

## 4. 示例: 替换没有参数的规则的示例

```shell
opa test -v authz_no_arguments.rego authz_no_arguments_test.rego
```

## 5. 示例: 函数不能使用`with`关键字替换

```shell
opa test -v authz_function_cannot_repleace_test.rego authz_function_cannot_repleace_test.rego
```

## 6. 覆盖测试

```shell
opa test --coverage --format=json example.rego example_test.rego
```