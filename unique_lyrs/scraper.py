import urllib.request
from bs4 import BeautifulSoup

page = 'https://www.lyrics.com/artist/%2ANSYNC/291150'
p = urllib.request.urlopen(page)
soup = BeautifulSoup(p, "lxml")

# print(soup)

a = soup.find_all('a')

l = []

for i in a:
    link = i.get('href')
    # print(link)
    if link == None:
        continue
    if 'lyric/' in link:
        l.append(link)

i = 1
for lyric in l:
    n =  str(i) +  '.txt'
    i += 1
    writer = open(n,'w')
    k = 'https://www.lyrics.com' + lyric
    print(k)
    lyricpage = urllib.request.urlopen(k)
    soup = BeautifulSoup(lyricpage, "lxml")
    lyrics = soup.find_all('pre')
    print("LYR", lyrics)
    for ly in lyrics:
        print("here\n")
        txt = ly.get_text()
        print(txt)
        writer.write(txt)
    writer.close()
    if i > 50:
        break
