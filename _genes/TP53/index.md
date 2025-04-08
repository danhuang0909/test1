---
layout: home
---

# 欢迎来到基因数据库

{% include search.html %}

<div class="stats">
  当前收录基因数：{{ site.data.genes | size }}
</div>


<pre>
测试数据：{{ site.data.test | jsonify }}
</pre>