# VScode markdown print pdf without formular efficient

## 目录
- [操作](#操作)
- [返回上一级README](../README.md)


## 操作

1. Install ```Markdown PDF``` in VScode
1. Find the file in path ```C://Users/<username>/.vscode/extensions/yzane.markdown-pdf-1.4.1/template/template.html```
1. Add 
    ```
    <script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
    <script type="text/x-mathjax-config"> MathJax.Hub.Config({ tex2jax: {inlineMath: [['$', '$']]}, messageStyle: "none" });</script>
    ```
    before ```</html>```, after ```</body>```


*[返回目录](#目录)*