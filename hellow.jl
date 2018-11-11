
path = "D:\\github\\wikiextractor\\extracted\\"

folderlist = readdir(path)

filelist = readdir(string(path , folderlist[1]))
test_file_path = string(path, folderlist[1], "\\" ,filelist[3])


raw = open(test_file_path , "r")
rawtext = readlines(raw)

rawtext = join(rawtext, "")
rawtext = split(rawtext, "</doc>")
print(rawtext[1])
