def solve(input: str | int):
    if isinstance(input, str):
        try:
            input = int(input)
        except:
            raise Exception(f"Failed to parse string to int: got '{input}'")
    else:
        return input + 1


if __name__ == "__main__":
    solve(input("Enter problem input: "))
    pass
