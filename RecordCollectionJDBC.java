package recordCollectionSQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import com.mysql.cj.xdevapi.Statement;

public class RecordCollectionJDBC {
	private static final Scanner in = new Scanner(System.in);
	private static Connection c = null;
	static Scanner scan = new Scanner (System.in);

	public static void main(String[] args) {
		System.out.println("Welecome to my Record Collection Database" + "\n" + "This is an interactive " + "database "
				+ "to display my viynl collection " + "\n" + "------------------------------");
		menuPrint();

		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			c = DriverManager.getConnection("jdbc:mysql://localhost:3306/record_collection", "root", "root");
			dataCounter();
			String menuChoice = "";

			do {

				menuChoice = in.next().toUpperCase();

				dataCounter();
				switch (menuChoice) {
				case "1":
					insertRecord();
					menuPrint();
					break;
				case "2":
					removeRecord();
					menuPrint();
					break;
				case "3":
					browseRecords();
					menuPrint();
					break;
				case "4":
					browseByGenre();
					menuPrint();
					break;
				case "5":
					genreHistory();
					menuPrint();
					break;
				case "6":
					browseRecordLabel();
					menuPrint();
					break;

				}
			} while (!menuChoice.equals("Q"));
			c.close();
			System.out.println("Goodbye...");
			// TODO Auto-generated method stub

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

	}

	private static void browseRecords() throws Exception {

		String query = "SELECT recordName,artistName,totalPlayTime,totalTracks,labelName,genre,yearOfRelease FROM record";
		try (java.sql.Statement stmt = c.createStatement()) {
			ResultSet rs = stmt.executeQuery(query);
			System.out.println("My Record Collection");
			while (rs.next()) {

				System.out.println("--------------------");
				String recordName = rs.getString("recordName");
				String artistName = rs.getString("artistName");
				int totalPlayTime = rs.getInt("totalTracks");
				String labelName = rs.getString("labelName");
				String genre = rs.getString("genre");
				int yearOfRelease = rs.getInt("yearOfRelease");
				System.out.println("Record Name: " + recordName + "\n" + "Artist Name: " + artistName + "\n"
						+ "Total Playtime: " + totalPlayTime + " Minutes" + "\n" + "Label: " + labelName + "\n"
						+ "Genre: " + genre + "\n" + "Debute: " + yearOfRelease);
				System.out.println("--------------------");
			}

		}

	}

	private static void browseByGenre() throws Exception {

		System.out.println("Filter Records By Genre" + "\n" + "--------------");
		String genreQuery = "SELECT genre FROM musicGenre";
		try (java.sql.Statement stmt1 = c.createStatement()) {
			ResultSet genreSet = stmt1.executeQuery(genreQuery);
			int i = 1;
			while (genreSet.next()) {

				String genreList = genreSet.getString("genre");
				System.out.println(genreList + "\n" + "-------------");
				i++;
			}

		}

		System.out.println("Enter Genre Below ----->");

		String userInput = in.next();
		System.out.println(userInput);

		String query = "SELECT recordName,artistName,totalPlayTime,totalTracks,labelName,genre,yearOfRelease FROM record WHERE genre LIKE '"
				+ userInput + "%" + "'"+"ELSE NULL";
		
		try (java.sql.Statement stmt = c.createStatement()) {
			ResultSet rs = stmt.executeQuery(query);
			

			while (rs.next()) {

				String recordName = rs.getString("recordName");
				String artistName = rs.getString("artistName");
				int totalPlayTime = rs.getInt("totalTracks");
				String labelName = rs.getString("labelName");
				String genre = rs.getString("genre");
				int yearOfRelease = rs.getInt("yearOfRelease");
				System.out.println("Record Name: " + recordName + "\n" + "Artist Name: " + artistName + "\n"
						+ "Total Playtime: " + totalPlayTime + " Minutes" + "\n" + "Label: " + labelName + "\n"
						+ "Genre: " + genre + "\n" + "Debute: " + yearOfRelease);
				System.out.println("--------------------");
			}
			
				
				
			
		}

	}

	private static void genreHistory() throws SQLException {
		System.out.println("Genre Information" + "\n" + "---------------------");
		String query = "SELECT genre,dateCreated FROM musicGenre ORDER BY genre ASC";
		try (java.sql.Statement stmt = c.createStatement()) {
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {

				String genre = rs.getString("genre");
				int dateCreated = rs.getInt("dateCreated");
				System.out.println(genre + "\n" + "Date Of Creation:" + dateCreated + "\n" + "---------------------");
			}
		}

	}

	private static void browseRecordLabel() throws SQLException {
		System.out.println("Record Labels" + "\n" + "-----------");
		String query = "SELECT labelName,dateFounded,currentCEO FROM recordLabel";
		try (java.sql.Statement stmt = c.createStatement()) {
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				String labelName = rs.getString("labelName");
				int dateFounded = rs.getInt("dateFounded");
				String currentCEO = rs.getString("currentCEO");
				System.out.println("\n" + "----------" + "\n" + labelName + "\n" + "Date Founded:" + dateFounded + "\n"
						+ "Current CEO:" + currentCEO);

			}

		}
	}

	private static void dataCounter() throws SQLException {
		String query = "SELECT recordName FROM record";

		int i = 0;

		try (java.sql.Statement stmt = c.createStatement()) {
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				String recordName = rs.getString("recordName");
				i++;
			}

			String query2 = "SELECT genre FROM musicGenre";

			int i2 = 0;

			try (java.sql.Statement stmt2 = c.createStatement()) {
				ResultSet rs2 = stmt2.executeQuery(query2);
				while (rs2.next()) {
					String recordName2 = rs2.getString("genre");
					i2++;
				}
				System.out.println("-------------------" + "\n" + "Collection Contains " + i
						+ " Records with a range of " + i2 + " Genres to choose From");

			}
		}
	}
	private static void insertRecord() throws SQLException{
		System.out.println("Enter Record Name");
		String recordName = scan.nextLine();
		System.out.println(recordName);
		System.out.println("Enter Artist Name");
		String artistName=scan.nextLine();
		System.out.println(artistName);
		
		System.out.println("Enter Playtime Of Record In Minutes");
		int playTime=scan.nextInt();
		System.out.println(playTime);
		
		System.out.println("Enter Total Tracks Of Record");
		int totalTrack=scan.nextInt();
		System.out.println(totalTrack);
		
		System.out.println("Enter Label Name That Record Was Released On");
		String labelName = scan.nextLine();
		System.out.println(labelName);
		
		System.out.println("Enter Genre Of Record");
		String genre = scan.nextLine();
		System.out.println(genre);
		System.out.println("Enter Year Of Release");
		int yearOfRelease =scan.nextInt();
		System.out.println(yearOfRelease);
		String query ="INSERT INTO record " + "VALUES ('"+recordName+"','"+artistName+"',"+playTime+","+totalTrack+",'"+labelName+"','"+genre+"',"+yearOfRelease+")";
		try (java.sql.Statement stmt = c.createStatement()) {
			stmt.executeUpdate(query);
		
				System.out.println("Adding record..."+"\n" + "Record Below Added To Collection"+"----------------"+"\n"+"Record Name: " + recordName + "\n" + "Artist Name: " + artistName + "\n"
						+ "Total Playtime: " + playTime + " Minutes" + "\n" + "Label: " + labelName + "\n"
						+ "Genre: " + genre + "\n" + "Debute: " + yearOfRelease+"'");
				
			}
		// create a Statement from the connection
	

		// insert the data
		//statement.executeUpdate("DELETE FROM record WHERE recordName ='Reasonable Doubt'");
		
		
	}
	private static void removeRecord() throws SQLException {
		System.out.println("Remove Record"+"\n"+"----------");
		System.out.println("Enter Record Name");
		String recordName = scan.nextLine();
		System.out.println(recordName);
		System.out.println("Enter Artist Name");
		String artistName = scan.nextLine();
		System.out.println(artistName);
		String query ="DELETE FROM record WHERE recordName='"+recordName+"' AND artistName='"+artistName+"'";
		try(java.sql.Statement stmt = c.createStatement()){
			stmt.executeUpdate(query);
			System.out.println("Removing Record From Collection..."+"\n"+"----------"+"\n"+"Record Name:"+recordName+"\n"+"Artist Name:"+artistName);
			
		}
		
	}
	
	private static void menuPrint() {
		System.out.println("User Menu" + "\n" + "\n" + "1:Enter New Record To Collection" + "\n"
				+ "2:Delete Record From Collection" + "\n" + "3:Record Collection" + "\n"
				+ "4:Filter Collection By Genre" + "\n" + "5:View All Genre Options" + "\n" + "6:View Record Label"
				+ "\n" + "Q:Quit");
		
	}
}

