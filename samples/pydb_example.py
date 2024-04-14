def main():
    from pudb.remote import set_trace
    set_trace(term_size=(80, 24), host="0.0.0.0")
    a = 1
    b = 2
    c = a + b


if __name__ == "__main__":
    main()
