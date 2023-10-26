import 'package:flutter/material.dart';
import 'package:next_game_store/constants/custom_colors.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isSearching = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors.lightBlue,
      elevation: 2.0,
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.white),
        onPressed: () {
          // Lógica para abrir o menu
        },
      ),
      title: _isSearching ? _buildSearchField() : Text('Next Game Store'),
      actions: _buildActions(),
    );
  }

  Widget _buildSearchField() {
    return Container(
      height: 35.0,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: Colors.grey),
          hintText: 'Search',
          border: InputBorder.none,
        ),
        onSubmitted: (query) {
          // Lógica para realizar a busca
        },
      ),
    );
  }

  List<Widget> _buildActions() {
    if (_isSearching) {
      return [];
    }

    return [
      IconButton(
        icon: Icon(Icons.search, color: Colors.white),
        onPressed: () {
          setState(() {
            _isSearching = true;
          });
        },
      ),
      IconButton(
        icon: Icon(Icons.person, color: Colors.white),
        onPressed: () {
          // Lógica para abrir o perfil do usuário ou fazer login
        },
      ),
    ];
  }
}
