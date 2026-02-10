def transform_string(s: str) -> str:
    result = []

    for ch in s:
        if ch.isalpha():
            if ch.lower() in "aeiou":
                result.append(ch.upper())
            else:
                result.append(ch.lower())
        else:
            result.append(ch)

    return "".join(result)
