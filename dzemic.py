import os
import uuid

# Generate a unique filename using UUID
unique_filename = f"{uuid.uuid4()}.txt"

# Get the current directory
current_directory = os.path.dirname(os.path.abspath(__file__))

# Create the full file path
file_path = os.path.join(current_directory, unique_filename)

# Create the file
with open(file_path, 'w') as file:
    file.write("This is a uniquely named file.")

print(f"Unique file created: {file_path}")
