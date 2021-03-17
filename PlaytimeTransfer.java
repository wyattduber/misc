import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.*;
import java.util.HashMap;

public class PlaytimeTransfer {

    public static void main(String[] args) throws SQLException, IOException {
        Connection dbcon = DriverManager.getConnection("jdbc:sqlite:cmi.sqlite.db");
        PreparedStatement stmt;
        ResultSet rs;
        HashMap<Integer, String> userID = new HashMap<>();
        HashMap<Integer, Long> userPlayTime = new HashMap<>();
        File file = new File("output.txt");
        FileWriter writer = new FileWriter("output.txt");

        stmt = dbcon.prepareStatement("SELECT id,username FROM users");
        rs = stmt.executeQuery();
        while (rs.next()) {
            userID.put(rs.getInt("id"), rs.getString("username"));
            userPlayTime.put(rs.getInt("id"), 0L);
            System.out.println("Matched username " + rs.getString("username") + " with id " + rs.getInt("id"));
            writer.write("Matched username " + rs.getString("username") + " with id " + rs.getInt("id") + "\n");
        }

        stmt = dbcon.prepareStatement("SELECT * FROM playtime");
        rs = stmt.executeQuery();
        rs.next();
        while (rs.next()) {
            if (rs.getInt("player_id") != 0) {
                long add = userPlayTime.get(rs.getInt("player_id"));
                add = add + (rs.getLong("h0") + rs.getLong("h1") + rs.getLong("h2") + rs.getLong("h3") + rs.getLong("h4") + rs.getLong("h5") + rs.getLong("h6") + rs.getLong("h7") + rs.getLong("h8") + rs.getLong("h9") + rs.getLong("h10") + rs.getLong("h11") + rs.getLong("h12") + rs.getLong("h13") + rs.getLong("h14") + rs.getLong("h15") + rs.getLong("h16") + rs.getLong("h17") + rs.getLong("h18") + rs.getLong("h19") + rs.getLong("h20") + rs.getLong("h21") + rs.getLong("h22") + rs.getLong("h23"));
                userPlayTime.put(rs.getInt("player_id"), add);
                System.out.println("PlayTme so far for user " + userID.get(rs.getInt("player_id")) + " is " + add);
                writer.write("PlayTme so far for user " + userID.get(rs.getInt("player_id")) + " is " + add + "\n");
                //System.out.println(userID.get(69) + "'s playtime: " + userPlayTime.get(69));
            }
        }

        stmt = dbcon.prepareStatement("SELECT * FROM users");
        rs = stmt.executeQuery();
        rs.next();
        while (rs.next()) {
            stmt = dbcon.prepareStatement("UPDATE users SET TotalPlayTime=? WHERE id=?");
            stmt.setLong(1, userPlayTime.get(rs.getInt("id")));
            stmt.setLong(2, rs.getInt("id"));
            stmt.execute();
            System.out.println("Updated TotalPlayTime for " + userID.get(rs.getInt("id")) + " with " + userPlayTime.get(rs.getInt("id")) + "ms");
            writer.write("Updated TotalPlayTime for " + userID.get(rs.getInt("id")) + " with " + userPlayTime.get(rs.getInt("id")) + "ms" + "\n");
            //System.out.println(userID.get(69) + "'s playtime: " + userPlayTime.get(69));
        }
        dbcon.setReadOnly(false);
        System.out.println(dbcon.isReadOnly());
        writer.close();
        dbcon.close();
    }

}
