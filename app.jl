function backup_files(source_folder::AbstractString, destination_folder::AbstractString)
    files = readdir(source_folder)

    for file in files
        source_file = joinpath(source_folder, file)

        destination_file = joinpath(destination_folder, file)

        cp(source_file, destination_file)

        println("File copied: $source_file -> $destination_file")
    end

    println("Backup completed!")
end

source_folder = "/path/to/source/folder"
destination_folder = "/path/to/destination/folder"

backup_files(source_folder, destination_folder)
