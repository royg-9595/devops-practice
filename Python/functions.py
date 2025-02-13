def check_prime(num):
    for i in range(2, num//2):
        if num%i==0:
            print(num, "not prime")
            return None
    print(num, "Is Prime")

check_prime(int(input("Enter Number: ")))

