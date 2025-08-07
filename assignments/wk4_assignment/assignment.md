# CI/CD Assignment: Automate Your Python App with GitHub Actions

Welcome! This assignment helps you apply everything you learned about GitHub Actions by setting up a complete CI/CD pipeline.

---

## 🎯 Objective

Set up a GitHub Action that:

1. **Builds and tests** a simple Python application on every push.
2. **Deploys or renders** your personal website automatically.

---

## 🧱 Task Breakdown

### Part 1: Python CI Workflow

✅ Create a Python app (`hello.py`) with a test file (`test_hello.py`).  
✅ Push your code to GitHub.  
✅ Create the following directory in your repo:
```
.github/workflows/
```
✅ Inside it, create `python-ci.yml` with the following logic:

- Trigger on `push`
- Checkout your code
- Set up Python
- Install dependencies (if any)
- Run your Python file and test script

### Sample Python App
```python
# hello.py
def say_hello():
    return "Hello, GitHub Actions!"

if __name__ == "__main__":
    print(say_hello())
```

```python
# test_hello.py
from hello import say_hello

def test_say_hello():
    assert say_hello() == "Hello, GitHub Actions!"
```

---

### Part 2: Deploy Your Personal Website (CD)

✅ Extend your workflow to deploy/render your personal website.  
✅ This can be a static site deployed via:
- GitHub Pages
- Render
- Netlify

Include deployment logic **after** the tests pass.

---

## 📝 Submission Requirements

- Your repo must contain:
  - `hello.py`
  - `test_hello.py`
  - `.github/workflows/python-ci.yml`
- The workflow should run automatically on `push`.
- It should print logs in the Actions tab.
- (Optional) Share your deployed site URL.

---

## 📚 Resources

- [GitHub Actions Docs](https://docs.github.com/en/actions)
- [GitHub Pages Deployment Guide](https://pages.github.com/)
- [YouTube: GitHub Actions Crash Course](https://youtu.be/eB0nUzAI7M8)
- [Python Unit Test Docs](https://docs.python.org/3/library/unittest.html)
- [Render Deployment](https://render.com/docs/deploy-static-sites)

---

## 💡 Tips

- Use `actions/setup-python@v4` to set up Python.
- Install test tools with `pip install pytest`.
- Use `pytest` to run your tests.
- Commit often and check GitHub Actions logs.

---

Good luck, and happy automating! 🚀🐍🛠️
