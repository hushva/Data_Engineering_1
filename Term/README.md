# Term Project
by **Karola Takács**

- - - - - - - - - - - - - - - - - - - -

## The content of the Term folder
* imdb_db.sql file for creating the dataset
* wh_sp_views.sql file contains all the scripts for creating the analytical layer, stored procedures, views and a trigger for inserts on _movies_ table.


### Deliverables

1. **OPERATIONAL LAYER**: My operational layer consists of 7 tables, which store information about the imdb movie ratings and details of the movies.

#### Database diagram
![Database diagram](/Term/DB_schema.png)

2. **Analytics**: The tables are rather small, dominantly with qualitative data. Possible questions to ask from this data are:
* How genres changed over the years?
* We could look into directors' most successful genres and compare to the most common genre they produce. On one hand this could lead to a suggestion what genre the director should favor - in other words: are directors creating films which result in their highest ranking or they should consider changing their most frequent genre? Second we could predict the rating of a director's next movie based on its genre.
* I also think it could be interesting to see how gender ratio varies along different dimensions of data,e.g. movie rating and gender ratio - whether any of the genders are overrepresented in the top or bottom rated movies or whether gender ratio varies in different decades.

3. **ANALYTICAL LAYER**: Keeping the analytical questions in mind I designed the analytical layer as following:
 basic facts about each movie which can be found in the base table _movies_ then adding the **genre** from _movies_genres_, **DirectorName** from _directors_, **ActorName** and **AtcorGender** from _actors_, **Role** from _roles_ and **GenderPct** from _directors_genders_ tables.
 
 4. **ETL PIPELINE**: In my ETL process I created a new column with unique identifier, applied joining, filtering, string and float modifications,
 
 5. **DATA MART**: For the analytical questions I created three views. One slices the analytical table along the date, the second is focusing on how Ranking relates to one's most frequent genre, while the third focuses on female-to-male ratio in the top 100 movies. 
