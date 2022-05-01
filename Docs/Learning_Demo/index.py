# 假设这里表已经创建好了
# 一级表存储A-Z的首字母，以及他们对应的二级表的范围 例如 A (0, 10)代表二级表前十行是A的数据
# 二级表存储关键词的所对应的blog的位置


first_index = {'A':(0,10),'B':(11,20),'C':(21,30),'D':(31,40)}

# (index, keyword, keyword_in_tiltle, keyword_in_content)
second_index = {(1, "build", (1,2),(3,4))}


def search_first_index(keword):
  for i in range(0,26):
    if first_index[i][0] == keyword[0]:
      return i


# weight代表这个关键词在它的搜索里的占比
# 整个的搜索算法是
def search(keyword,weight):
  # 先搜索一级表
  index = search_first_index(keyword)
  # 再搜索二级表
  myrange = first_index[index][1]
  for i in myrange:
    if second_index[i][2] == keyword:
      return True #这里同时get到blog_id
  return False

