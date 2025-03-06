# MPC Customer Outage Summary Dashboard  
**June 2024 - July 2024**  

## Overview  

The **MPC Customer Outage Summary Dashboard** enhances outage tracking and reporting by providing **real-time insights** on customer outages, restoration progress, and key performance indicators (KPIs).  

By integrating **date range slicers** and optimizing **DAX calculations**, this dashboard enables **storm center managers, media outlets (e.g., WLOX), and other stakeholders** to quickly analyze outage data without relying on multiple queries and databases in Microsoft Access.  

---

## Key Features  

- **Streamlined Data Access**  
  - Eliminates the need to open multiple queries and databases.  
  - Generates reports in seconds with real-time outage data.  

- **Enhanced Outage Analysis & Visualization**  
  - **Date range slicer integration** for dynamic filtering.  
  - **Linked slicers to KPIs** including:  
    - Total customers active  
    - Percent restored  
    - Total customers experiencing outages  
    - Total customers restored  
    - Total events active  
    - Total outages  

- **Advanced DAX Calculations for Precision**  
  - Edited **DAX code** to ensure accurate data representation across dashboard visuals.  
  - Developed **new dynamic measures** such as `percentRestoredFiltered` and `TotalOutagesFiltered` to improve filtering accuracy.  
  - Implemented calculations that adjust based on user-selected **date ranges** and **hourly intervals**.  

- **Dynamic Titles & User Experience Enhancements**  
  - Created **DAX measures** to dynamically generate titles based on user selections.  
  - Titles reflect **selected date ranges** or prompt users when no selection is made.  
  - Provides formatted summaries including **Storm Start Time** and **Report Time**.  
  - Ensures contextually appropriate feedback for different selection scenarios.  

- **Detailed Reporting & Performance Tracking**  
  - **Data tables** for outages categorized by:  
    - Town  
    - Substation  
    - Device  
    - Area  
    - Status  
  - **Event thresholds and peak graphs** to track storm impact over time.  

---

## Technical Details  

- **SQL Queries**: Available in the [`/sql`](sql/) folder.  
- **Dashboard Screenshots**: Available in the [`/screenshots`](/mpc%20internship%20dashboards/MPC%20Customer%20Outage%20Summary) folder.  
- **Data Source**: Oracle SQL Developer.  

*(Note: The `.pbix` Power BI files are not included due to security policies.)*  

---

## Screenshots   
![Dashboard Screenshot](https://github.com/haileyrthomas01/powerbidashboards/blob/main/mpc%20internship%20dashboards/MPC%20Customer%20Outage%20Summary/outage.png)  

---

## How to Use  

Since the **Power BI files are not included**, you can explore:  
- **SQL queries** to understand the data extraction and transformation process.  
- **Screenshots** to visualize the dashboard’s insights.  

For any questions or further details, feel free to reach out.  

