import pandas as pd


def normalize_icd10(code):
    if pd.isna(code):
        return None

    return (
        str(code)
        .strip()
        .upper()
        .replace(".", "")
    )