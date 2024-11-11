import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class NotificationPage extends HookWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Hook state for the list of notifications
    final notifications = useState<List<NotificationItem>>([
      NotificationItem(
        title: 'Booking Successful!',
        date: '20 Dec, 2022 | 20:49 PM',
        description:
            'Congratulations! You have successfully booked a house for 3 days for \$90. Enjoy the services!',
        isNew: true,
        icon: Icons.calendar_today,
      ),
      NotificationItem(
        title: 'Booking Successful!',
        date: '19 Dec, 2022 | 18:35 PM',
        description:
            'Congratulations! You have successfully booked a villa for 5 days for \$150. Enjoy the services!',
        isNew: true,
        icon: Icons.calendar_today,
      ),
      NotificationItem(
        title: 'New Services Available!',
        date: '14 Dec, 2022 | 10:52 AM',
        description:
            'You can now make multiple bookings for real estate at once. You can also cancel your booking.',
        isNew: false,
        icon: Icons.new_releases,
      ),
      NotificationItem(
        title: 'Credit Card Connected!',
        date: '12 Dec, 2022 | 15:38 PM',
        description:
            'Your credit card has been successfully linked with Reasa. Enjoy our service.',
        isNew: false,
        icon: Icons.credit_card,
      ),
      NotificationItem(
        title: 'Account Setup Successful!',
        date: '12 Dec, 2022 | 14:27 PM',
        description:
            'Your account creation is successful, you can now experience our services.',
        isNew: false,
        icon: Icons.person,
      ),
    ]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: notifications.value.isEmpty
          ? const EmptyNotificationView()
          : NotificationListView(notifications: notifications.value),
    );
  }
}

class EmptyNotificationView extends StatelessWidget {
  const EmptyNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(Icons.notifications_none, size: 80, color: Colors.grey[300]),
          // const Image(image: AssetImage("assets/icons/empty_data_icon.svg")),
          SvgPicture.asset("assets/icons/empty_data_icon.svg"),
          const SizedBox(height: 64),
          const Text(
            'Empty',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            "You don't have any notifications at this time",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}

class NotificationListView extends StatelessWidget {
  final List<NotificationItem> notifications;

  const NotificationListView({super.key, required this.notifications});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final item = notifications[index];
        return NotificationTile(notification: item);
      },
    );
  }
}

class NotificationTile extends StatelessWidget {
  final NotificationItem notification;

  const NotificationTile({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.blue[100],
              child: Icon(notification.icon, color: Colors.blue),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(notification.title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                if (notification.isNew)
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'New',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
              ],
            ),
            subtitle: Text(notification.date),
          ),
          const SizedBox(height: 4),
          Text(notification.description),
        ],
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String date;
  final String description;
  final bool isNew;
  final IconData icon;

  NotificationItem({
    required this.title,
    required this.date,
    required this.description,
    required this.isNew,
    required this.icon,
  });
}
