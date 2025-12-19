# 🎵 Spotify Data Analysis – Key Insights

## 📌 Overview
This analysis explores Spotify track data using SQL Server (SSMS 2022) to understand artist activity, track popularity, content trends, and release patterns.

---

## 🔍 Key Insights

### 🎤 Artist Activity
- A small number of artists contribute a **large volume of tracks**, while most artists have limited releases.
- Track production is **unevenly distributed** across artists.

---

### 🔥 Track & Artist Popularity
- The **top 10 tracks** significantly outperform others in popularity, indicating a strong **hit-driven trend**.
- Artists with the highest number of tracks are **not always the most popular**, showing that **quantity does not guarantee popularity**.

---

### 🚫 Explicit vs Non-Explicit Content
- **Explicit tracks have a slightly higher average popularity** compared to non-explicit tracks.
- This suggests listener preference leans toward **bold or expressive content**.

---

### 🎼 Genre Distribution
- A few genres dominate the dataset, while many genres appear infrequently.
- Popularity is **concentrated around mainstream genres**, highlighting genre bias in listener engagement.

---

### 💿 Album Characteristics
- Albums with a higher total track count do not necessarily achieve higher popularity.
- **Singles and shorter albums** tend to perform better in terms of engagement.

---

### 📆 Release Trends
- Track releases have **increased in recent years**, indicating rapid content growth.
- Average popularity varies by year, suggesting that **newer releases gain visibility faster**, but older tracks still retain value.

---

### ⏱ Track Duration Impact
- **Medium-length tracks (3–4 minutes)** achieve the highest average popularity.
- Very short and very long tracks tend to perform less effectively.

---

## 📈 Summary
Overall, the analysis shows that **popularity is driven more by content quality and structure than volume**. Medium-length, explicit tracks within dominant genres released in recent years tend to perform best.

---

## 🛠 SQL Techniques Used
- Aggregations & Grouping
- Conditional Logic (CASE)
- Time-based Analysis
- Ranking & Sorting
