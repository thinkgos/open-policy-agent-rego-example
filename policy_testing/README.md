# policy testing

## 1. 示例1

```shell
opa test -v authz.rego authz_test.rego
```

## 2. 示例2

```shell
opa test -v example.rego example_test.rego
```

## 3. 示例3

```shell
 opa test -v example.rego pass_fail_error_test.rego
 ```

默认情况下，`OPA`以人类可读格式打印测试结果。如果您需要以编程方式使用测试结果，请使用`JSON`输出格式

```shell
opa test --format=json example.rego pass_fail_error_test.rego 
```

## 4. 示例4

```shell
 opa test -v example.rego pass_fail_error_test.rego
 ```

## 5. 示例5

```shell
opa test -v authz_no_arguments.rego authz_no_arguments_test.rego
```


## 6. 示例6

```shell
opa test -v authz_no_arguments.rego authz_no_arguments_test.rego
```

## 7. 覆盖测试

```shell
opa test --coverage --format=json example.rego example_test.rego
```