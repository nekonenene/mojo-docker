fn main():
    print("Hello, world!")
    add_xy()
    let x = add(100, 200)
    print(x)

fn add(x: Int, y: Int) -> Int:
    print(x, "+", y, "=", x + y)
    return x + y

fn add_xy():
    var x: Int = 1
    x += 1
    let y = 2
    print(x + y)
