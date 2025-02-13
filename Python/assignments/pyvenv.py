import hashlib

def hash_password(password: str) -> str:
  hashed = hashlib.sha256(password.encode()).hexdigest()
  return hashed


if __name__ == "__main__":
  password = input("Enter password: ")
  hashed_password = hash_password(password)
  print(f"Your hashed password is: {hashed_password}")