package com.ubi.testbase;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.IOException;
import java.nio.file.*;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class FileHandler {

    private final Path folderPath;
    private final ObjectMapper objectMapper;

    /**
     * Constructor to initialize FileHandler with a custom folder path.
     *
     * @param customFolderPath The custom folder path relative to the project root.
     */
    public FileHandler(String customFolderPath) {
        // Get the project root directory
        String projectRoot = System.getProperty("user.dir");

        // Combine the project root directory with the custom folder path
        this.folderPath = Paths.get(projectRoot, "src/test/resources", customFolderPath);
        System.out.println(this.folderPath);
        this.objectMapper = new ObjectMapper();
        createFolderIfNotExists();
    }

    /**
     * Creates the folder if it does not exist.
     */
    private void createFolderIfNotExists() {
        try {
            if (!Files.exists(folderPath)) {
                Files.createDirectories(folderPath);
            }
        } catch (IOException e) {
            throw new RuntimeException("Could not create folder: " + folderPath, e);
        }
    }

    /**
     * Creates a new file in the folder.
     *
     * @param fileName The name of the file to create.
     * @return The path to the created file.
     */
    public Path createFile(String fileName) {
        try {
            Path filePath = folderPath.resolve(fileName);
            return Files.createFile(filePath);
        } catch (IOException e) {
            throw new RuntimeException("Could not create file: " + fileName, e);
        }
    }

    /**
     * Writes JSON data to a file.
     *
     * @param fileName The name of the file to write to.
     * @param jsonData The JSON data to write.
     */
    public void writeJsonToFile(String fileName, Object jsonData) {
        try {
            Path filePath = folderPath.resolve(fileName);
            objectMapper.writeValue(filePath.toFile(), jsonData);
        } catch (IOException e) {
            throw new RuntimeException("Could not write JSON to file: " + fileName, e);
        }
    }

    /**
     * Reads the content of a file as a string.
     *
     * @param fileName The name of the file to read.
     * @return The content of the file as a string.
     * @throws IOException If an I/O error occurs.
     */
    public String readFile(String fileName) throws IOException {
        try {
            Path filePath = folderPath.resolve(fileName);
            System.out.println("Reading file from path: " + filePath.toAbsolutePath());
            if (!Files.exists(filePath)) {
                throw new IOException("File does not exist: " + filePath.toAbsolutePath());
            }
            return new String(Files.readAllBytes(filePath));
        } catch (IOException e) {
            throw new RuntimeException("Could not read file: " + fileName, e);
        }
    }

    /**
     * Reads JSON data from a file and parses it into a JsonNode.
     *
     * @param fileName The name of the file to read.
     * @return The parsed JsonNode.
     * @throws IOException If an I/O error occurs.
     */
    public JsonNode readJson(String fileName) throws IOException {
        try {
            String fileContent = readFile(fileName);
            return objectMapper.readTree(fileContent);
        } catch (IOException e) {
            throw new RuntimeException("Could not parse JSON from file: " + fileName, e);
        }
    }

    /**
     * Extracts the filename from a file path.
     *
     * @param filePath The file path to extract the filename from.
     * @return The extracted filename.
     */
    public String extractFilename(String filePath) {
        // Normalize the path to handle different separators
        String normalizedPath = filePath.replace("\\", "/");

        // Split the path into components
        String[] pathComponents = normalizedPath.split("/");

        // Return the last component, which is the filename
        return pathComponents[pathComponents.length - 1];
    }

    /**
     * Deletes a file in the folder.
     *
     * @param fileName The name of the file to delete.
     */
    public void deleteFile(String fileName) {
        try {
            Path filePath = folderPath.resolve(fileName);
            Files.deleteIfExists(filePath);
        } catch (IOException e) {
            throw new RuntimeException("Could not delete file: " + fileName, e);
        }
    }

    /**
     * Deletes the entire folder and its contents.
     */
    public void deleteFolder() {
        try (Stream<Path> files = Files.walk(folderPath)) {
            files.sorted(Comparator.reverseOrder())
                 .map(Path::toFile)
                 .forEach(File::delete);
        } catch (IOException e) {
            throw new RuntimeException("Could not delete folder: " + folderPath, e);
        }
    }

    /**
     * Lists all files in the folder.
     *
     * @return A list of filenames in the folder.
     */
    public List<String> listFiles() {
        try (Stream<Path> files = Files.list(folderPath)) {
            return files.map(Path::getFileName)
                        .map(Path::toString)
                        .collect(Collectors.toList());
        } catch (IOException e) {
            throw new RuntimeException("Could not list files in folder: " + folderPath, e);
        }
    }

    /**
     * Checks if a file exists in the folder.
     *
     * @param fileName The name of the file to check.
     * @return True if the file exists, false otherwise.
     */
    public boolean fileExists(String fileName) {
        Path filePath = folderPath.resolve(fileName);
        return Files.exists(filePath);
    }

    /**
     * Reads the content of a file line by line.
     *
     * @param fileName The name of the file to read.
     * @return A list of lines in the file.
     * @throws IOException If an I/O error occurs.
     */
    public List<String> readFileByLines(String fileName) throws IOException {
        try {
            Path filePath = folderPath.resolve(fileName);
            if (!Files.exists(filePath)) {
                throw new IOException("File does not exist: " + filePath.toAbsolutePath());
            }
            return Files.readAllLines(filePath);
        } catch (IOException e) {
            throw new RuntimeException("Could not read file by lines: " + fileName, e);
        }
    }

    /**
     * Appends content to a file.
     *
     * @param fileName The name of the file to append to.
     * @param content  The content to append.
     */
    public void appendToFile(String fileName, String content) {
        try {
            Path filePath = folderPath.resolve(fileName);
            Files.write(filePath, content.getBytes(), StandardOpenOption.APPEND);
        } catch (IOException e) {
            throw new RuntimeException("Could not append to file: " + fileName, e);
        }
    }
}
