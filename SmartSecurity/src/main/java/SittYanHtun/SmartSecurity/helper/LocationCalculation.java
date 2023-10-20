package SittYanHtun.SmartSecurity.helper;

public class LocationCalculation {

    public static boolean isWithinRadius(double userLat, double userLng, double checkLat, double checkLng, double radiusMiles) {
        // Radius of the Earth in miles
        double earthRadius = 3958.8; // miles

        // Convert latitude and longitude from degrees to radians
        double userLatRad = Math.toRadians(userLat);
        double checkLatRad = Math.toRadians(checkLat);

        double deltaLat = Math.toRadians(checkLat - userLat);
        double deltaLng = Math.toRadians(checkLng - userLng);

        double a = Math.sin(deltaLat / 2) * Math.sin(deltaLat / 2) +
                Math.cos(userLatRad) * Math.cos(checkLatRad) *
                        Math.sin(deltaLng / 2) * Math.sin(deltaLng / 2);

        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));

        // Calculate the distance in miles
        double distance = earthRadius * c;

        return distance <= radiusMiles;
    }
}
