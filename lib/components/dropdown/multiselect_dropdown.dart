// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

//Copied from Pub.dev -> dropdown_button2 -> 4. DropdownButton2 as Multiselect Dropdown with Checkboxes: # //

List<String> selectedItems = [];

class MultiSelectDropdown extends StatelessWidget {
   final List<String> items;
   final Function(List<String>) onSelectionChange;
  MultiSelectDropdown({
    Key? key,
    required this.items,
    required this.onSelectionChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: Text(
              'Select Items',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: items.map((item) {
              return DropdownMenuItem(
                value: item,
                //disable default onTap to avoid closing menu when selecting an item
                enabled: false,
                child: StatefulBuilder(
                  builder: (context, menuSetState) {
                    final isSelected = selectedItems.contains(item);
                    return InkWell(
                      onTap: () {
                        isSelected ? selectedItems.remove(item) : selectedItems.add(item);
                        onSelectionChange(selectedItems); //This line is added, to handle change in checkbox state
                        menuSetState(() {});
                      },
                      child: Container(
                        height: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            if (isSelected)
                              const Icon(Icons.check_box_outlined)
                            else
                              const Icon(Icons.check_box_outline_blank),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }).toList(),
            //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
            value: selectedItems.isEmpty ? null : selectedItems.last,
            onChanged: (value) {},
            selectedItemBuilder: (context) {
              return items.map(
                (item) {
                  return Container(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      selectedItems.join(', '),
                      style: const TextStyle(
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    ),
                  );
                },
              ).toList();
            },
            buttonStyleData: const ButtonStyleData(
              padding: EdgeInsets.only(left: 16, right: 8),
              height: 40,
              width: 140,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.zero,
            ),
          ),
        ),
      ),
    );
}
}
