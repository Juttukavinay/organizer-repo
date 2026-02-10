import subprocess

TOTAL_TESTS = 5
MARKS_PER_TEST = 2

def run_tests(path):
    result = subprocess.run(
        ["pytest", path, "-q"],
        capture_output=True,
        text=True
    )
    passed = result.stdout.count("PASSED")
    return passed

visible_passed = run_tests("tests/visible")
hidden_passed = run_tests("tests/hidden")

total_passed = visible_passed + hidden_passed
score = total_passed * MARKS_PER_TEST

print("========== Q1 SCORE ==========")
print(f"Visible Passed : {visible_passed}")
print(f"Hidden Passed  : {hidden_passed}")
print(f"TOTAL PASSED   : {total_passed}/{TOTAL_TESTS}")
print(f"SCORE          : {score}/10")
print("================================")

# Fail PR if zero score
if total_passed == 0:
    exit(1)
