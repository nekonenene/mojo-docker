fn main():
    print("Hello, world!")
    add_xy()

    let x = 100
    let y = 200
    let z = add(x, y)
    print(x, y, z)


fn add(x: Int, y: Int) -> Int:
    print(x, "+", y, "=", x + y)
    return x + y


fn add_xy():
    var x: Int = 1
    x += 1
    let y = 2
    print(x + y)
