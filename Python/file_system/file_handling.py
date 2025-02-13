import os, re

# string="Good morning , good Day!"
# l=[]
# for i in re.finditer(re.escape("Good"), string, re.I):
#     print(i, i.span())
    
# print(l)

# print("current durectory", os.getcwd())
# f = open("file1.txt", 'w')
# f.write("HEy How you doin'")
# f.close()

# # f = open("file1.txt")
# print(f.read())
# f.close()

# file_path=os.getcwd() + "/file1.txt"

# if os.path.isfile(file_path):
#     print("File exists.")
# else:
#     print("File does not exist.")

# import os
# def list_files(directory):
#     if os.path.exists(directory):
#         for file_name in os.listdir(directory):
#             file_path = os.path.join(directory, file_name)
#             if os.path.isfile(file_path):
#                 print(f"{file_name}: {os.path.getsize(file_path)} bytes")
#     else:
#         print("Directory does not exist.")
# directory = input("Enter the path of the directory")
# list_files(directory)


text = """Duis info@geeksforgeeks.com convallis. Parturient montes nascetur ridiculus mus \ 
geeksforgeeks@rocks.xyz mauris. Odio eu feugiat pre@rsos_tium.index nibh ipsum consequat love@gfg.in \ 
pretium aenean pharetra magna ac placerat. Vitae justo eget magna fermentum iaculis eu non."""
  
reg = re.findall(r"[A-Za-z0-9_%+-.]+"
                 r"@[A-Za-z0-9.-]+"
                 r"\.[A-Za-z]{2,5}",text) 

print(reg)